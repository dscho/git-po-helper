#!/bin/sh

test_description="check typos in zh_CN.po"

. ./lib/sharness.sh

test_expect_success "setup" '
	mkdir po &&
	touch po/git.pot &&
	cp ../examples/zh_CN.po po
'

cat >expect <<-\EOF
[po/zh_CN.po] 5204 translated messages.
level=warning msg="mismatch variable names: FSCK_IGNORE"
level=warning msg=">> msgid: %d (FSCK_IGNORE?) should never trigger this callback"
level=warning msg=">> msgstr: %d（忽略 FSCK?）不应该触发这个调用"
level=warning
level=warning msg="mismatch variable names: extensions.partialClone, extensions.partialclone"
level=warning msg=">> msgid: --filter can only be used with the remote configured in extensions.partialclone"
level=warning msg=">> msgstr: 只可以将 --filter 用于在 extensions.partialClone 中配置的远程仓库"
level=warning
level=warning msg="mismatch variable names: --porcelain"
level=warning msg=">> msgid: --progress can't be used with --incremental or porcelain formats"
level=warning msg=">> msgstr: --progress 不能和 --incremental 或 --porcelain 同时使用"
level=warning
level=warning msg="mismatch variable names: git-am"
level=warning msg=">> msgid: It looks like 'git am' is in progress. Cannot rebase."
level=warning msg=">> msgstr: 看起来 'git-am' 正在执行中。无法变基。"
level=warning
level=warning msg="mismatch variable names: submodule.alternateLocaion, submodule.alternateLocation"
level=warning msg=">> msgid: Value '%s' for submodule.alternateLocation is not recognized"
level=warning msg=">> msgstr: 不能识别 submodule.alternateLocaion 的取值 '%s'"
level=warning
level=warning msg="mismatch variable names: dimmed_zebra"
level=warning msg=">> msgid: color moved setting must be one of 'no', 'default', 'blocks', 'zebra', 'dimmed-zebra', 'plain'"
level=warning msg=">> msgstr: 移动的颜色设置必须是 'no'、'default'、'blocks'、'zebra'、'dimmed_zebra' 或 'plain'"
level=warning
level=warning msg="mismatch variable names: crlf_action"
level=warning msg=">> msgid: illegal crlf_action %d"
level=warning msg=">> msgstr: 非法的 crlf 动作 %d"
level=warning
level=warning msg="mismatch variable names: --signed"
level=warning msg=">> msgid: not sending a push certificate since the receiving end does not support --signed push"
level=warning msg=">> msgstr: 未发送推送证书，因为接收端不支持签名推送"
level=warning
level=warning msg="mismatch variable names: --type=bool"
level=warning msg=">> msgid: option `--default' expects a boolean value with `--type=bool`, not `%s`"
level=warning msg=">> msgstr: 选项 `--default' 和 `type=bool` 期望一个布尔值，不是 `%s`"
level=warning
level=warning msg="mismatch variable names: --type=ulong"
level=warning msg=">> msgid: option `--default' expects an unsigned long value with `--type=ulong`, not `%s`"
level=warning msg=">> msgstr: 选项 `--default' 和 `type=ulong` 期望一个无符号长整型，不是 `%s`"
level=warning
level=warning msg="mismatch variable names: --atomic"
level=warning msg=">> msgid: the receiving end does not support --atomic push"
level=warning msg=">> msgstr: 接收端不支持原子推送"
level=warning
level=warning msg="mismatch variable names: --signed"
level=warning msg=">> msgid: the receiving end does not support --signed push"
level=warning msg=">> msgstr: 接收端不支持签名推送"
level=warning
level=warning msg="mismatch variable names: lasy_name, lazy_name"
level=warning msg=">> msgid: unable to join lazy_name thread: %s"
level=warning msg=">> msgstr: 不能加入 lasy_name 线程：%s"
level=warning
EOF

test_expect_success "check typos in zh_CN.po" '
	git-po-helper check-po zh_CN >actual 2>&1 &&
	test_cmp expect actual
'

test_done
