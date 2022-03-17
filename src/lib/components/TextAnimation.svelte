<script>
    import Typewriter from 'svelte-typewriter';
</script>
  
<Typewriter delay={600} cascade={true}>
    <slot/>
</Typewriter>