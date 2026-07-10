# CLAUDE.md

This file provides guidance to Claude Code when working with code in this repository.

## Project Overview

Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront, provisioned with Terraform, and automated via GitHub Actions.

## Architecture

- index.html: single-page portfolio (hero, about, services, courses, book, contact)
- style.css: all styling for index.html, mobile-first responsive (breakpoints at 900px, 768px, 600px)
- privacy.html and terms.html: standalone legal pages with their own inline styles
- images/: static assets (logo, profile, signature, course thumbnails, hero background)

Pure HTML5 and CSS3. No JavaScript. No build step. No framework.

## Commands

- Provision infrastructure: `cd terraform && terraform init`, then `terraform plan`, then `terraform apply`
- Preview locally: `python3 -m http.server 8000`

## Conventions

- All infrastructure changes go through Terraform. Never modify AWS resources manually.
- No JavaScript in this project.
- CSS uses a mobile-first approach with breakpoints at 900px, 768px, and 600px.

## Safety

Never put secrets in this file. No API keys, passwords, or AWS credentials.
