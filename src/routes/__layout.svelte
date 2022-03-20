<script>
    import '../app.css'
    import Nav from "../lib/components/Nav.svelte"
    import Footer from '../lib/components/Footer.svelte'
</script>

<Nav/>

<div class="p-8 max-w-6xl mx-auto flex-auto">
    <slot></slot>
</div>
<div class="fixed inset-x-0 bottom-0">
<Footer/>
</div>