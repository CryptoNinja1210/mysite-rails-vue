<template>
  <div
      class="tw-flex tw-min-h-screen tw-items-center tw-justify-center tw-bg-indigo-800 tw-p-5 tw-text-indigo-100"
  >
    <Head title="Home" />
    <div class="tw-w-full tw-max-w-md">
      <p class="tw-text-7xl tw-text-amber-100">
        Home
      </p>
      <p class="tw-mt-3 tw-text-lg tw-leading-tight">
        Welcome to visit my site!
      </p>
    </div>
  </div>
</template>

<script>
import { Head } from '@inertiajs/vue3';

export default {
  components: {
    Head,
  },
};
</script>
