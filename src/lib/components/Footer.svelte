<script>
  import { mdiDevTo, mdiGithub, mdiTwitter } from '@mdi/js';
  import Icon from './Icon.svelte';
  let size = 30;
</script>

<!-- hehe -->
<footer class="flex text-sm font-mono p-1">
  <div class="flex justify-center mx-auto">
    <p>Made with svelte by Israel Miller</p>
  </div>
  <div class="flex mx-auto">
    <a
      href="https://twitter.com/izroll_dev"
      rel="noopener external"
      target="_blank"
      id="twitter"
      aria-label="Israel Miller's Twitter Profile"

      class="fill-indigo-900 flex mx-auto transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-120 duration-300"
    >
      <Icon {size} path={mdiTwitter} />
    </a>
    <a
      href="https://github.com/imiller31"
      rel="noopener external"
      target="_blank"
      id="github"
      aria-label="Israel Miller's Github Profile"

      class="fill-indigo-900 flex mx-auto transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-120 duration-300"
    >
      <Icon {size} path={mdiGithub} />
    </a>
  </div>
</footer>