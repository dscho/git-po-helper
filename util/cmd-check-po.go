package util

import (
	"os"
	"path/filepath"
	"strings"

	log "github.com/sirupsen/logrus"
	"github.com/spf13/viper"
)

// CmdCheckPo implements check-po sub command.
func CmdCheckPo(args ...string) bool {
	var (
		ret       = true
		checkCore bool
	)

	if viper.GetBool("check--core") || viper.GetBool("check-po--core") {
		checkCore = true
	}

	if len(args) == 0 {
		filepath.Walk("po", func(path string, info os.FileInfo, err error) error {
			if info == nil {
				return filepath.SkipDir
			}
			if !info.IsDir() {
				if filepath.Ext(path) == ".po" {
					args = append(args, path)
				}
				return nil
			}
			if path == "po" {
				return nil
			}
			// skip subdir
			return filepath.SkipDir
		})
	}

	if len(args) == 0 {
		log.Errorf(`cannot find any ".po" files to check`)
		ret = false
	}
	for _, fileName := range args {
		locale := strings.TrimSuffix(filepath.Base(fileName), ".po")
		poFile := filepath.Join(PoDir, locale+".po")
		if !CheckPoFile(locale, poFile) {
			ret = false
		}
		if checkCore {
			if !CheckCorePoFile(locale) {
				ret = false
			}
		}
	}
	return ret
}
