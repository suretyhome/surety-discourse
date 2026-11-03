import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class SuretyMainBanner extends Component {
  @service currentUser;

  <template>
    <section class="c-welcome c-welcome--large">
      <header>
        <h2>Welcome to the Surety Support Forum</h2>
        <h4>
          The #1 resource for smart
          <a href="https://suretyhome.com/">home</a>
          &amp;
          <a href="https://surety.business/">business</a>
          security, Qolsys, 2GIG, nami, and
          <b>Alarm.com</b>

          <p>Stay up to date by subscribing to
            <a href="https://ml.withsurety.com/subscription/form">Surety
              Newsletters</a>.</p>
        </h4>
      </header>

      <div class="c-welcome__body c-welcome--large__body">
        <p><strong>Helpful Links:</strong></p>
        <nav>
          <a class="c-btn" href="/new-topic?category=support">Ask a Forum Question</a>
          <a class="c-btn" href="/new-message?groupname=surety">Private Message Surety</a>
          {{#if this.currentUser}}
            <a
              class="c-btn"
              href="/u/{{this.currentUser.username}}/messages"
            >My Private Messages</a>
          {{else}}
            <a class="c-btn" href="/about">About this Site</a>
          {{/if}}
        </nav>
      </div>
    </section>
  </template>
}
