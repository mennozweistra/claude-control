# Claude Control

A structured workflow for managing Claude Code in software projects.

## Overview

Uses `CLAUDE.md` and `.claude/` directory to guide Claude through systematic task management with requirements tracking, architectural guidance, and progress monitoring.

## Usage

1. **Setup**: Copy `CLAUDE.md` and `.claude/` to your project
2. **Define**: Tell Claude your requirements and architecture  
3. **Plan**: Ask Claude to generate tasks
4. **Execute**: Tell Claude to handle the next task
5. **Review**: Give feedback until the task meets your standards
6. **Complete**: Tell Claude the task is done and to commit changes
7. **Continue**: 
   - Tell Claude to start the next open task (-> 4)
   - Or add new requirements or architecture (-> 2)

Tasks use numbered references for easy tracking (`1.3` = task 1, step 3).
