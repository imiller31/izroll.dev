<script>
    import PageAnimation from '../lib/components/PageAnimation.svelte'
import TextAnimation from '../lib/components/TextAnimation.svelte';
</script>

<svelte:head>
    <title>About izroll.dev</title>
</svelte:head>
<PageAnimation>
    <main>
        <TextAnimation>
            <h1 class="text-4xl text-center my-8 uppercase">
                About
            </h1>
            <p>
                This website is built with svelte and is being served by a simple Rust backend. 
                I am using Knative running on AKS!
            </p>
        </TextAnimation>
    </main>
</PageAnimation>