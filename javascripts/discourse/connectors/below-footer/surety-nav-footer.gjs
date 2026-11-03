import { get } from "@ember/helper";

const currentYear = () => new Date().getFullYear();

export default <template>
  <div class="c-footer">
    <div class="wrap">
      <div class="c-footer__grid">
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
          <div class="social">
            <a
              class="c-social"
              target="_blank"
              href="https://www.youtube.com/c/surety"
            >
              <img src={{settings.theme_uploads.youtube}} alt="YouTube" />
            </a>
            <a class="c-social" target="_blank" href="https://x.com/suretyhome">
              <img src={{settings.theme_uploads.x}} alt="X" />
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>;
