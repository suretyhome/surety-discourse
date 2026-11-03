Discourse Theme
===============

## Layout

| Path | What it is |
|---|---|
| `javascripts/discourse/connectors/above-main-container/surety-main-banner.gjs` | Welcome banner with Helpful Links |
| `javascripts/discourse/connectors/below-footer/surety-nav-footer.gjs` | Footer: site links, copyright and social icons |
| `javascripts/discourse/connectors/about-after-description/surety-main-description.gjs` | About page content |
| `javascripts/discourse/api-initializers/no-footer.js` | Hides the footer on infinite scroll pages |
| `javascripts/discourse/api-initializers/global-privacy-control.js` | Stops Matomo tracking for browsers sending Global Privacy Control |
| `common/`, `desktop/`, `mobile/` | Stylesheets, plus the font link in `common/head_tag.html` |
| `assets/` | Images, registered in `about.json` and used via `settings.theme_uploads` |

Matomo tracking comes from the separate [discourse-matomo-analytics](https://github.com/discourse/discourse-matomo-analytics) theme component, not from this repo.

## Conventions

- **All content lives in this repo.** The theme has no admin-editable settings (`settings.yml`). Change banner text, links and social accounts in the templates, so every change is reviewed and versioned.
- **Use `.gjs` for templates and api-initializers for JavaScript.** Discourse no longer runs `<script type="text/discourse-plugin">` tags and is removing `.hbs` support.
- **Keep the username masking.** The user masking rules in `common/common.scss` hide `@usernames` from non-staff so only display names show. They're intentional; don't remove them. After Discourse upgrades, check that a logged-in regular user still can't see usernames on user cards, profiles and posts.
- **Pick class names that nothing else uses.** `.gjs` connectors have no wrapper element, so core and plugin styles apply to our markup directly. Two names caused bugs:
  - `c-footer` is a sticky footer in Discourse Chat; ours is `surety-footer`.
  - `c-ad` is hidden by ad blockers (EasyList `##.c-ad`); the banner is `c-welcome`.

  Avoid ad-like names such as `ad`, `banner` and `promo`.
- **Avoid deprecated Sass functions** such as `lighten()` and `map_get()`. Use plain variables and CSS functions, which also follow the active color scheme.

## Deploying

Install the theme in Discourse from this repo's HTTPS URL; no deploy key is needed.

1. Bump `theme_version` in `about.json`, commit and push to `main`.
2. In Discourse, go to Admin → Customize → Themes, open the theme and click **Update**. **Check for updates** is slow and only needed when you don't know whether there's something new.
3. Check the homepage, a topic page and the About page, and look for deprecation warnings in the browser console.

To roll back, `git revert` the commit, push, and update the theme again.

## Development

To preview changes without pushing, use the [Discourse Theme CLI](https://meta.discourse.org/t/discourse-theme-cli/82950):

1. Install it once: `gem install discourse_theme`
2. Run `discourse_theme watch .` in this folder. The first time, it asks for the site URL and an API key.
3. Point it at a separate test theme, not the live one, and preview that theme while you work. Each save uploads your changes.
