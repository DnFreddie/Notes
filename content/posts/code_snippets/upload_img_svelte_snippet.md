+++
title = 'upload img svelte_snippet'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    
```html
<script lang="ts">

	let uploadedImage: string;

	function handleImageUpload(e: Event) {
		const image = (e.target as HTMLInputElement)?.files?.[0];
		if (!image) return;
		uploadedImage = URL.createObjectURL(image);
	}
</script>

<div class="px-4">

		
		<h2 class="is-size-3 mb-4 mt-6">Update Album Image</h2>
		<form method="post" enctype="multipart/form-data">
			<input type="file" name="file" accept="image/*" on:change={handleImageUpload} />

			{#if uploadedImage}
				<div class="mt-4">
					<img src={uploadedImage} style="max-width: 50ch;" alt="" />
				</div>
			{/if}

			<div class="mt-4 mb-6">
				<button
					class="button is-primary is-disabled"
					type="submit"
					formaction="?/addRef"
					disabled={!uploadedImage ?? null}
					>Upload Image
				</button>
			</div>
		</form>

</div>


```