import { apiInitializer } from "discourse/lib/api";

// Honor Global Privacy Control (GPC) as promised in our privacy policy. The
// Matomo theme component only checks Do Not Track, so tell Matomo to wait for
// consent, which we never give, before sending any tracking requests.
export default apiInitializer(() => {
  if (navigator.globalPrivacyControl) {
    window._paq = window._paq || [];
    window._paq.push(["requireConsent"]);
  }
});
