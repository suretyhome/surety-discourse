import { get } from "@ember/helper";

const currentYear = () => new Date().getFullYear();

export default <template>
  <div class="surety-footer">
    <div class="wrap">
      <div class="surety-footer__grid">
        <div class="logo">
          <img
            src={{get settings.theme_uploads "surety-logo-white-v3"}}
            alt="Surety"
          />
        </div>
        <div class="col">
          <h5><a href="https://suretyhome.com">Surety Home</a></h5>
          <ul>
            <li><a href="https://suretyhome.com/how-it-works">How It Works</a></li>
            <li><a href="https://suretyhome.com/plans">Plans</a></li>
            <li><a href="https://suretyhome.com/store">Products</a></li>
            <li><a href="https://suretyhome.com/why-surety">Why Surety</a></li>
            <li><a href="https://suretyhome.com/testimonials">Testimonials</a></li>
          </ul>
        </div>

        <div class="col">
          <h5><a href="https://surety.business">Surety Business</a></h5>
          <ul>
            <li><a href="https://surety.business/alarm">Security Alarm</a></li>
            <li><a href="https://surety.business/cameras">Cameras</a></li>
            <li><a href="https://surety.business/access">Access Control</a></li>
            <li><a href="https://surety.business/fleet">Fleet Management</a></li>
            <li><a href="https://surety.business/plans">Plans</a></li>
          </ul>
        </div>

        <div class="col">
          <h5><a href="https://suretyhome.com/get-started">Get Started</a></h5>
          <ul>
            <li><a
                href="https://suretyhome.com/existing-equipment/check-system-compatibility/"
              >Already Have Equipment</a></li>
            <li><a
                href="https://suretyhome.com/new-system-setup/choose-a-bundle/"
              >Need Equipment</a></li>
            <li><a href="https://suretyhome.com/account/">Surety Login</a></li>
            <li><a href="https://suretyhome.com/alarm/">Alarm.com Login</a></li>
          </ul>
        </div>

        <div class="heel">
          <p>© 2013-{{(currentYear)}} SuretyCAM, LLC. All Rights Reserved.</p>
          {{! Shared accounts first, then each brand's own accounts }}
          <div class="social">
            <div class="social__group">
              <span class="social__label">Surety</span>
              <div class="social__icons">
                <a
                  class="c-social"
                  target="_blank"
                  href="https://www.youtube.com/c/surety"
                >
                  <img src={{settings.theme_uploads.youtube}} alt="Surety on YouTube" />
                </a>
                <a
                  class="c-social"
                  target="_blank"
                  href="https://www.linkedin.com/company/surety-home-business-security"
                >
                  <img src={{settings.theme_uploads.linkedin}} alt="Surety on LinkedIn" />
                </a>
              </div>
            </div>
            <div class="social__group">
              <span class="social__label">Home</span>
              <div class="social__icons">
                <a
                  class="c-social"
                  target="_blank"
                  href="https://x.com/suretyhome"
                >
                  <img src={{settings.theme_uploads.x}} alt="Surety Home on X" />
                </a>
                <a
                  class="c-social"
                  target="_blank"
                  href="https://www.reddit.com/user/suretyhome/"
                >
                  <img
                    src={{settings.theme_uploads.reddit}}
                    alt="Surety Home on Reddit"
                  />
                </a>
              </div>
            </div>
            <div class="social__group">
              <span class="social__label">Business</span>
              <div class="social__icons">
                <a
                  class="c-social"
                  target="_blank"
                  href="https://x.com/Surety_Business"
                >
                  <img
                    src={{settings.theme_uploads.x}}
                    alt="Surety Business on X"
                  />
                </a>
                <a
                  class="c-social"
                  target="_blank"
                  href="https://www.reddit.com/user/SuretyBusiness/"
                >
                  <img
                    src={{settings.theme_uploads.reddit}}
                    alt="Surety Business on Reddit"
                  />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>;
