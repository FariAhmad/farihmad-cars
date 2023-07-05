// app.js

// Define global variables
let scene, camera, renderer;

// Initialize the scene
function init() {
  scene = new THREE.Scene();

  // Set up the camera
  camera = new THREE.PerspectiveCamera(
    75,
    window.innerWidth / window.innerHeight,
    0.1,
    1000
  );
  camera.position.z = 5;

  // Create the renderer
  renderer = new THREE.WebGLRenderer({ antialias: true });
  renderer.setSize(window.innerWidth, window.innerHeight);
  document.getElementById('car-model-container').appendChild(renderer.domElement);

  // Load the 3D car model
  const loader = new THREE.FBXLoader();
  loader.load(
    './assets/img/bmw.glb',
    function (object) {
      scene.add(object);
    },
    undefined,
    function (error) {
      console.error(error);
    }
  );
}

// Render the scene
function render() {
  requestAnimationFrame(render);
  renderer.render(scene, camera);
}

// Call the init and render functions
init();
render();
