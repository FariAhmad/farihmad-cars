        // Load the Three.js library 
        let model;

        // Get the canvas element
        const amgCanvas = document.getElementById('amg-canvas');

        // Create a Three.js renderer
        const renderer = new THREE.WebGLRenderer({ canvas: amgCanvas });
        renderer.setSize(amgCanvas.clientWidth, amgCanvas.clientHeight);

        // Create a Three.js scene
        const scene = new THREE.Scene();

        // Create a camera
        const camera = new THREE.PerspectiveCamera(80, amgCanvas.clientWidth / amgCanvas.clientHeight, 0.1, 1000);
        camera.position.z = 5;

        // Set the desired aspect ratio
        const aspectRatio = 6 / 6; // Adjust the ratio as needed

        // Set the canvas dimensions and camera aspect ratio
        renderer.setSize(amgCanvas.clientWidth, amgCanvas.clientWidth / aspectRatio);
        camera.aspect = amgCanvas.clientWidth / (amgCanvas.clientWidth / aspectRatio);
        camera.updateProjectionMatrix();

        // Load the 3D model
        const loader = new THREE.GLTFLoader();
        loader.load('/assets/img/mercedes_amg 45.glb', (gltf) => {
            model = gltf.scene;
            scene.add(model);

            // Adjust the model's size and position
            const box = new THREE.Box3().setFromObject(model);
            const size = box.getSize(new THREE.Vector3()).length();
            const center = box.getCenter(new THREE.Vector3());
            const targetSize = 8; // Set the desired size for the model
            const scale = targetSize / size;
            model.scale.set(scale, scale, scale);
            model.position.x += (model.position.x - center.x) * scale;
            model.position.y += (model.position.y - center.y) * scale;
            model.position.z += (model.position.z - center.z) * scale;
        });

        // Add ambient light to the scene
        const ambientLight = new THREE.AmbientLight(0xffffff, 100);
        scene.add(ambientLight);

        // Add directional light to the scene
        const directionalLight = new THREE.DirectionalLight(0xffffff, 10);
        directionalLight.position.set(1, 1, 1);
        scene.add(directionalLight);

        // Animation loop
        function animate() {
            requestAnimationFrame(animate);

            if (model) { // Check if the model is defined before performing operations
                model.rotation.y += 0.01;
            }

            renderer.render(scene, camera);
        }

        // Call the animate function to start the animation
        animate();


