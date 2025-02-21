#!/bin/sh

test_description="check typos in bg.po"

. ./lib/test-lib.sh

HELPER="po-helper --no-special-gettext-versions --pot-file=no --report-typos=warn --report-file-locations=none"

test_expect_success "checkout po-2.31.1" '
	git clone "$PO_HELPER_TEST_REPOSITORY" workdir &&
	git -C workdir checkout po-2.31.1
'

cat >expect <<-\EOF
------------------------------------------------------------------------------
level=info msg="[po/bg.po]    5104 translated messages."
------------------------------------------------------------------------------
level=warning msg="[po/bg.po]    mismatched patterns: $HOME"
level=warning msg="[po/bg.po]    >> msgid: $HOME not set"
level=warning msg="[po/bg.po]    >> msgstr: променливата „HOME“ не е зададена"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --abort"
level=warning msg="[po/bg.po]    >> msgid: --abort but leave index and working tree alone"
level=warning msg="[po/bg.po]    >> msgstr: преустановяване без промяна на индекса и работното дърво"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --contains"
level=warning msg="[po/bg.po]    >> msgid: --contains option is only allowed in list mode"
level=warning msg="[po/bg.po]    >> msgstr: Опцията „-contains“ изисква режим на списък."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: extensions.partialClone, extensions.partialclone"
level=warning msg="[po/bg.po]    >> msgid: --filter can only be used with the remote configured in extensions.partialclone"
level=warning msg="[po/bg.po]    >> msgstr: опцията „--filter“ може да се ползва само с отдалеченото хранилище указано в настройката „extensions.partialClone“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --no-contains"
level=warning msg="[po/bg.po]    >> msgid: --no-contains option is only allowed in list mode"
level=warning msg="[po/bg.po]    >> msgstr: Опцията „-contains“ изисква режим на списък."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --cached, --no-index"
level=warning msg="[po/bg.po]    >> msgid: --no-index or --untracked cannot be used with revs"
level=warning msg="[po/bg.po]    >> msgstr: опциите „--cached“ и „--untracked“ са несъвместими с версии."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --points-at"
level=warning msg="[po/bg.po]    >> msgid: --points-at option is only allowed in list mode"
level=warning msg="[po/bg.po]    >> msgstr: Опцията „-points-at“ изисква режим на списък."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --reflog, --track"
level=warning msg="[po/bg.po]    >> msgid: --reflog option needs one branch name"
level=warning msg="[po/bg.po]    >> msgstr: опцията „--track“ изисква точно едно име на клон"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --stdin"
level=warning msg="[po/bg.po]    >> msgid: --stdin and --merge-base are mutually exclusive"
level=warning msg="[po/bg.po]    >> msgstr: опциите „-stdin“ и „--merge-base“ са несъвместими"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --rfc"
level=warning msg="[po/bg.po]    >> msgid: --subject-prefix/--rfc and -k are mutually exclusive"
level=warning msg="[po/bg.po]    >> msgstr: опциите „--subject-prefix“/„-rfc“ и „-k“ са несъвместими"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --name-only, --only-input"
level=warning msg="[po/bg.po]    >> msgid: --trailer with --only-input does not make sense"
level=warning msg="[po/bg.po]    >> msgstr: опцията „--trailer“ е несъвместима с „--name-only“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --worktre, --worktree"
level=warning msg="[po/bg.po]    >> msgid: --worktree cannot be used with multiple working trees unless the config"
level=warning msg="[po/bg.po]    extension worktreeConfig is enabled. Please read \"CONFIGURATION FILE\""
level=warning msg="[po/bg.po]    section in \"git help worktree\" for details"
level=warning msg="[po/bg.po]    >> msgstr: опцията „--worktre“ не приема множество работни дървета, преди"
level=warning msg="[po/bg.po]    включването на разширението в настройките „worktreeConfig“. За"
level=warning msg="[po/bg.po]    повече информация вижте раздела „CONFIGURATION FILE“ в"
level=warning msg="[po/bg.po]    „git help worktree“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --no-commit"
level=warning msg="[po/bg.po]    >> msgid: Automatic merge went well; stopped before committing as requested"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    >> msgstr: Автоматичното сливане завърши успешно. Самото подаване не е извършено, защото бе зададена опцията „--no-commit“."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: $BRANCH, $br"
level=warning msg="[po/bg.po]    >> msgid: Git normally never creates a ref that ends with 40 hex characters"
level=warning msg="[po/bg.po]    because it will be ignored when you just specify 40-hex. These refs"
level=warning msg="[po/bg.po]    may be created by mistake. For example,"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]     git switch -c $br $(git rev-parse ...)"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    where \"$br\" is somehow empty and a 40-hex ref is created. Please"
level=warning msg="[po/bg.po]    examine these refs and maybe delete them. Turn this message off by"
level=warning msg="[po/bg.po]    running \"git config advice.objectNameWarning false\""
level=warning msg="[po/bg.po]    >> msgstr: При нормална работа Git никога не създава указатели, които завършват"
level=warning msg="[po/bg.po]    с 40 шестнадесетични знака, защото стандартно те ще бъдат прескачани."
level=warning msg="[po/bg.po]    Възможно е такива указатели да са създадени случайно. Например:"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]     git switch -c $BRANCH $(git rev-parse …)"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    където стойността на променливата на средата BRANCH е празна, при което"
level=warning msg="[po/bg.po]    се създава подобен указател. Прегледайте тези указатели и ги изтрийте."
level=warning msg="[po/bg.po]    За да изключите това съобщение, изпълнете:"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]     git config advice.objectNameWarning false"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: refs/heads, refs/heads/"
level=warning msg="[po/bg.po]    >> msgid: HEAD (%s) points outside of refs/heads/"
level=warning msg="[po/bg.po]    >> msgstr: „HEAD“ (%s) сочи извън директорията „refs/heads“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: git-am"
level=warning msg="[po/bg.po]    >> msgid: It looks like 'git am' is in progress. Cannot rebase."
level=warning msg="[po/bg.po]    >> msgstr: Изглежда, че сега се прилагат кръпки чрез командата „git-am“. Не може да пребазирате в момента."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --no-ff"
level=warning msg="[po/bg.po]    >> msgid: Non-fast-forward commit does not make sense into an empty head"
level=warning msg="[po/bg.po]    >> msgstr: Понеже върхът е без история, всички сливания са превъртания, не може да се извърши същинско сливане изисквано от опцията „--no-ff“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --filter, --stdout"
level=warning msg="[po/bg.po]    >> msgid: cannot use --filter without --stdout"
level=warning msg="[po/bg.po]    >> msgstr: опцията „-filter“ изисква „-stdout“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: dimmed_zebra"
level=warning msg="[po/bg.po]    >> msgid: color moved setting must be one of 'no', 'default', 'blocks', 'zebra', 'dimmed-zebra', 'plain'"
level=warning msg="[po/bg.po]    >> msgstr: настройката за цвят за преместване трябва да е една от: „no“ (без), „default“ (стандартно), „blocks“ (парчета), „zebra“ (райе), „dimmed_zebra“ (тъмно райе), „plain“ (обикновено)"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: conclude_pack, vger.kernel.org"
level=warning msg="[po/bg.po]    >> msgid: confusion beyond insanity"
level=warning msg="[po/bg.po]    >> msgstr: фатална грешка във функцията „conclude_pack“. Това е грешка в Git, докладвайте я на разработчиците, като пратите е-писмо на адрес: „git@vger.kernel.org“."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: vger.kernel.org"
level=warning msg="[po/bg.po]    >> msgid: confusion beyond insanity in parse_pack_objects()"
level=warning msg="[po/bg.po]    >> msgstr: фатална грешка във функцията „parse_pack_objects“. Това е грешка в Git, докладвайте я на разработчиците, като пратите е-писмо на адрес: „git@vger.kernel.org“."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: credential-cache--daemon"
level=warning msg="[po/bg.po]    >> msgid: credential-cache--daemon unavailable; no unix socket support"
level=warning msg="[po/bg.po]    >> msgstr: демонът за кеша с идентификациите е недостъпен — липсва поддръжка на гнезда на unix"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: %%(trailers:key=), %%(trailers:КЛЮЧ=)"
level=warning msg="[po/bg.po]    >> msgid: expected %%(trailers:key=<value>)"
level=warning msg="[po/bg.po]    >> msgstr: очаква се %%(trailers:КЛЮЧ=СТОЙНОСТ)"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --quit, --skip"
level=warning msg="[po/bg.po]    >> msgid: git am [<options>] (--continue | --skip | --abort)"
level=warning msg="[po/bg.po]    >> msgstr: git am [ОПЦИЯ…] (--continue | --quit | --abort)"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --bisect-next, --bisect-replay"
level=warning msg="[po/bg.po]    >> msgid: git bisect--helper --bisect-replay <filename>"
level=warning msg="[po/bg.po]    >> msgstr: git bisect--helper --bisect-next ИМЕ_НА_ФАЙЛ"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --bisect-reset, --bisect-skip"
level=warning msg="[po/bg.po]    >> msgid: git bisect--helper --bisect-skip [(<rev>|<range>)...]"
level=warning msg="[po/bg.po]    >> msgstr: git bisect--helper --bisect-reset [(ВЕРСИЯ|ДИАПАЗОН)…]"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --bisect-reset, --bisect-state"
level=warning msg="[po/bg.po]    >> msgid: git bisect--helper --bisect-state (bad|new) [<rev>]"
level=warning msg="[po/bg.po]    >> msgstr: git bisect--helper --bisect-reset (ЛОШО) [ВЕРСИЯ]"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --bisect-reset, --bisect-state"
level=warning msg="[po/bg.po]    >> msgid: git bisect--helper --bisect-state (good|old) [<rev>...]"
level=warning msg="[po/bg.po]    >> msgstr: git bisect--helper --bisect-reset (ДОБРО) [ВЕРСИЯ…]"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: _git_rev"
level=warning msg="[po/bg.po]    >> msgid: git bundle create [<options>] <file> <git-rev-list args>"
level=warning msg="[po/bg.po]    >> msgstr: git bundle create [ОПЦИЯ…] ФАЙЛ АРГУМЕНТ_ЗА_git_rev-list…"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: git upload-pack, git upload-repack"
level=warning msg="[po/bg.po]    >> msgid: git upload-pack [<options>] <dir>"
level=warning msg="[po/bg.po]    >> msgstr: git upload-repack [ОПЦИЯ…] ДИРЕКТОРИЯ"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: git verify-commit, git verify-tag"
level=warning msg="[po/bg.po]    >> msgid: git verify-commit [-v | --verbose] <commit>..."
level=warning msg="[po/bg.po]    >> msgstr: git verify-tag [-v | --verbose] ПОДАВАНЕ…"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --force"
level=warning msg="[po/bg.po]    >> msgid: helper %s does not support 'force'"
level=warning msg="[po/bg.po]    >> msgstr: насрещната помощна програма не поддържа „%s“ поддържа опцията „--force“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: crlf_action"
level=warning msg="[po/bg.po]    >> msgid: illegal crlf_action %d"
level=warning msg="[po/bg.po]    >> msgstr: неправилно действие за край на ред: %d"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: s.merge"
level=warning msg="[po/bg.po]    >> msgid: invalid branch.%s.merge; cannot rebase onto > 1 branch"
level=warning msg="[po/bg.po]    >> msgstr: неправилен клон за сливане „%s“. Невъзможно е да пребазирате върху повече от 1 клон"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: run_command"
level=warning msg="[po/bg.po]    >> msgid: run_command returned non-zero status for %s"
level=warning msg="[po/bg.po]    ."
level=warning msg="[po/bg.po]    >> msgstr: изпълнената команда завърши с ненулев изход за „%s“"
level=warning msg="[po/bg.po]    ."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: run_command"
level=warning msg="[po/bg.po]    >> msgid: run_command returned non-zero status while recursing in the nested submodules of %s"
level=warning msg="[po/bg.po]    ."
level=warning msg="[po/bg.po]    >> msgstr: изпълнената команда завърши с ненулев изход при обхождане на подмодулите, вложени в „%s“"
level=warning msg="[po/bg.po]    ."
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --raw, --stat"
level=warning msg="[po/bg.po]    >> msgid: synonym for '-p --raw'"
level=warning msg="[po/bg.po]    >> msgstr: псевдоним на „-p --stat“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --dirstat=, --dirstat=files"
level=warning msg="[po/bg.po]    >> msgid: synonym for --dirstat=files,param1,param2..."
level=warning msg="[po/bg.po]    >> msgstr: псевдоним на „--dirstat=ФАЙЛОВЕ,ПАРАМЕТЪР_1,ПАРАМЕТЪР_2,…“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: git cherry-pick"
level=warning msg="[po/bg.po]    >> msgid: try \"git revert (--continue | %s--abort | --quit)\""
level=warning msg="[po/bg.po]    >> msgstr: използвайте „git cherry-pick (--continue | %s--abort | --quit)“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: lazy_dir"
level=warning msg="[po/bg.po]    >> msgid: unable to create lazy_dir thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се създаде нишка за директории: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: lazy_name"
level=warning msg="[po/bg.po]    >> msgid: unable to create lazy_name thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се създаде нишка за имена: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: load_cache_entries"
level=warning msg="[po/bg.po]    >> msgid: unable to create load_cache_entries thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се създаде нишка за зареждане на обектите от кеша: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: load_index_extensions"
level=warning msg="[po/bg.po]    >> msgid: unable to create load_index_extensions thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се създаде нишка за зареждане на разширенията на индекса: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: lazy_name"
level=warning msg="[po/bg.po]    >> msgid: unable to join lazy_name thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се изчака нишка за имена: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: load_cache_entries"
level=warning msg="[po/bg.po]    >> msgid: unable to join load_cache_entries thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се изчака нишка за зареждане на обектите от кеша: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: load_index_extensions"
level=warning msg="[po/bg.po]    >> msgid: unable to join load_index_extensions thread: %s"
level=warning msg="[po/bg.po]    >> msgstr: не може да се създаде нишка за зареждане на разширенията на индекса: %s"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: new_index"
level=warning msg="[po/bg.po]    >> msgid: unable to write new_index file"
level=warning msg="[po/bg.po]    >> msgstr: новият индекс не може да бъде записан"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: --patch"
level=warning msg="[po/bg.po]    >> msgid: unknown --patch mode: %s"
level=warning msg="[po/bg.po]    >> msgstr: неизвестна стратегия за прилагане на кръпка: „%s“"
level=warning msg="[po/bg.po]"
level=warning msg="[po/bg.po]    mismatched patterns: update_ref"
level=warning msg="[po/bg.po]    >> msgid: update_ref failed for ref '%s': %s"
level=warning msg="[po/bg.po]    >> msgstr: неуспешно обновяване на указателя „%s“: %s"
level=warning msg="[po/bg.po]"
EOF

test_expect_success "check typos in bg.po" '
	git -C workdir $HELPER check-po bg >out 2>&1 &&
	make_user_friendly_and_stable_output <out >actual &&
	test_cmp expect actual
'

test_expect_success "still has typos in master branch" '
	git -C workdir checkout master &&
	test_must_fail git -C workdir $HELPER \
		check-po --report-typos=error bg >out 2>&1 &&
	make_user_friendly_and_stable_output <out >actual &&
	cat >expect <<-EOF &&
		------------------------------------------------------------------------------
		level=info msg="[po/bg.po]    5195 translated messages."
		------------------------------------------------------------------------------
		level=error msg="[po/bg.po]    mismatched patterns: refs/heads, refs/heads/"
		level=error msg="[po/bg.po]    >> msgid: HEAD (%s) points outside of refs/heads/"
		level=error msg="[po/bg.po]    >> msgstr: „HEAD“ (%s) сочи извън директорията „refs/heads“"
		level=error msg="[po/bg.po]"
		level=error msg="[po/bg.po]    mismatched patterns: _git_rev"
		level=error msg="[po/bg.po]    >> msgid: git bundle create [<options>] <file> <git-rev-list args>"
		level=error msg="[po/bg.po]    >> msgstr: git bundle create [ОПЦИЯ…] ФАЙЛ АРГУМЕНТ_ЗА_git_rev-list…"
		level=error msg="[po/bg.po]"
		level=error msg="[po/bg.po]    mismatched patterns: --dirstat=, --dirstat=files"
		level=error msg="[po/bg.po]    >> msgid: synonym for --dirstat=files,param1,param2..."
		level=error msg="[po/bg.po]    >> msgstr: псевдоним на „--dirstat=ФАЙЛ…,ПАРАМЕТЪР_1,ПАРАМЕТЪР_2,…“"
		level=error msg="[po/bg.po]"

		ERROR: fail to execute "git-po-helper check-po"
	EOF
	test_cmp expect actual

'

test_done
