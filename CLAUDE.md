# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

- `npm test` — run Vitest test suite
- `npm run lint` — ESLint 9 flat config
- `npm run build` — compile TypeScript

To run a single test file: `npm test -- src/foo.test.ts`

## Architecture

- **Language:** TypeScript (strict mode), Node 20 LTS
- **Test runner:** Vitest — test files live next to source as `foo.test.ts`
- All source code lives in `src/`

## Conventions

- Named exports only — no default exports
- No `console.log` in production code
- Commit style: conventional commits (`feat:`, `fix:`, `chore:`)
- Every PR requires at least one test
