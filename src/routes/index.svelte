<script>
    import PageAnimation from '../lib/components/PageAnimation.svelte'
import TextAnimation from '../lib/components/TextAnimation.svelte';
</script>

<svelte:head>
    <title>izroll.dev</title>
  <meta
    name="description"
    content="Perhaps there will be a blog here at some point."
  />
  <meta property="og:title" content="izroll.dev" />
  <meta
    property="og:description"
    content="Perhaps there will be a blog here at some."
  />
  <meta property="og:url" content="https://izroll.dev" />

</svelte:head>
<PageAnimation>
<main>
    <br>
    <section class="content flex py-2 w-screen">
      <div class="justify-left align-text-middle items-center flex flex-1">
        <TextAnimation>
        <h1 class="text-xl">Hi, I'm <mark class="text-indigo-100 bg-indigo-900 rounded-sm">Israel</mark></h1>
        <h2 class="text-lg" id="about-me">
          I am a Senior Software Engineer at <mark class="text-indigo-100 bg-indigo-900 rounded-sm">Microsoft</mark>
        </h2> 
        <h3 class="text-lg">working on <mark class="text-indigo-100 bg-indigo-900 rounded-sm">Azure Kubernetes Service</mark></h3>
        <h4 class="text-lg">and am based in Atlanta, GA.</h4>
        <h5 class="text-lg">I like music, gaming, and programming.</h5>
        </TextAnimation>
      </div>

      <!-- svelte-ignore a11y-img-redundant-alt -->
      <div class="items-center flex mx-auto flex-1">
        <img
          src="/profilev1.gif"
          alt="Israel Miller Profile Photo"
          width="450"
          height="450"
        />
    </div>
    </section>
</main>
</PageAnimation>