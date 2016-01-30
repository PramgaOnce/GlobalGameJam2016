using UnityEngine;

public class CachedMonoBehaviour : MonoBehaviour
{
    # region animation
    private Animation _animation;
    public new Animation animation
    {
        get
        {
            if ( _animation == null )
            {
                _animation = base.GetComponent<Animation>();
            }
            return _animation;
        }
    }
    # endregion
    # region animator
    private Animator _animator;
    public Animator animator
    {
        get
        {
            if ( _animator == null )
            {
                _animator = GetComponent<Animator>();
            }
            return _animator;
        }
    }
    # endregion
    # region audio
    private AudioSource _audio;
    public new AudioSource audio
    {
        get
        {
            if ( _audio == null )
            {
                _audio = base.GetComponent<AudioSource>();
            }
            return _audio;
        }
    }
    # endregion
    # region camera
    private Camera _camera;
    public new Camera camera
    {
        get
        {
            if ( _camera == null )
            {
                _camera = base.GetComponent<Camera>();
            }
            return _camera;
        }
    }
    # endregion
    # region capsuleCollider
    private CapsuleCollider _capsuleCollider;
    public CapsuleCollider capsuleCollider
    {
        get
        {
            if ( _capsuleCollider == null )
            {
                _capsuleCollider = GetComponent<CapsuleCollider>();
            }
            return _capsuleCollider;
        }
    }
    # endregion
    # region collider
    private Collider _collider;
    public new Collider collider
    {
        get
        {
            if ( _collider == null )
            {
                _collider = base.GetComponent<Collider>();
            }
            return _collider;
        }
    }
    # endregion
    # region collider2D
    private Collider2D _collider2D;
    public new Collider2D collider2D
    {
        get
        {
            if ( _collider2D == null )
            {
                _collider2D = base.GetComponent<Collider2D>();
            }
            return _collider2D;
        }
    }
    # endregion
    # region constantForce
    private ConstantForce _constantForce;
    public new ConstantForce constantForce
    {
        get
        {
            if ( _constantForce == null )
            {
                _constantForce = base.GetComponent<ConstantForce>();
            }
            return _constantForce;
        }
    }
    # endregion
    # region gameObject
    private GameObject _gameObject;
    public new GameObject gameObject
    {
        get
        {
            if ( _gameObject == null )
            {
                _gameObject = base.gameObject;
            }
            return _gameObject;
        }
    }
    # endregion
    # region guiText
    private GUIText _guiText;
    public new GUIText guiText
    {
        get
        {
            if ( _guiText == null )
            {
                _guiText = base.GetComponent<GUIText>();
            }
            return _guiText;
        }
    }
    # endregion
    # region guiTexture
    private GUITexture _guiTexture;
    public new GUITexture guiTexture
    {
        get
        {
            if ( _guiTexture == null )
            {
                _guiTexture = base.GetComponent<GUITexture>();
            }
            return _guiTexture;
        }
    }
    # endregion
    # region hingeJoint
    private HingeJoint _hingeJoint;
    public new HingeJoint hingeJoint
    {
        get
        {
            if ( _hingeJoint == null )
            {
                _hingeJoint = base.GetComponent<HingeJoint>();
            }
            return _hingeJoint;
        }
    }
    # endregion
    # region light
    private Light _light;
    public new Light light
    {
        get
        {
            if ( _light == null )
            {
                _light = base.GetComponent<Light>();
            }
            return _light;
        }
    }
    # endregion
    # region meshFilter
    private MeshFilter _meshFilter;
    public MeshFilter meshFilter
    {
        get
        {
            if ( _meshFilter == null )
            {
                _meshFilter = GetComponent<MeshFilter>();
            }
            return _meshFilter;
        }
    }
    # endregion
    # region meshRenderer
    private MeshRenderer _meshRenderer;
    public MeshRenderer meshRenderer
    {
        get
        {
            if ( _meshRenderer == null )
            {
                _meshRenderer = GetComponent<MeshRenderer>();
            }
            return _meshRenderer;
        }
    }
    # endregion
    # region networkView
    private NetworkView _networkView;
    public new NetworkView networkView
    {
        get
        {
            if ( _networkView == null )
            {
                _networkView = base.GetComponent<NetworkView>();
            }
            return _networkView;
        }
    }
    # endregion
    # region particleEmitter
    private ParticleEmitter _particleEmitter;
    public new ParticleEmitter particleEmitter
    {
        get
        {
            if ( _particleEmitter == null )
            {
                _particleEmitter = base.GetComponent<ParticleEmitter>();
            }
            return _particleEmitter;
        }
    }
    # endregion
    # region particleSystem
    private ParticleSystem _particleSystem;
    public new ParticleSystem particleSystem
    {
        get
        {
            if ( _particleSystem == null )
            {
                _particleSystem = base.GetComponent<ParticleSystem>();
            }
            return _particleSystem;
        }
    }
    # endregion
    # region renderer
    private Renderer _renderer;
    public new Renderer renderer
    {
        get
        {
            if ( _renderer == null )
            {
                _renderer = base.GetComponent<Renderer>();
            }
            return _renderer;
        }
    }
    # endregion
    # region rigidbody
    private Rigidbody _rigidbody;
    public new Rigidbody rigidbody
    {
        get
        {
            if ( _rigidbody == null )
            {
                _rigidbody = base.GetComponent<Rigidbody>();
            }
            return _rigidbody;
        }
    }
    # endregion
    # region rigidbody2D
    private Rigidbody2D _rigidbody2D;
    public new Rigidbody2D rigidbody2D
    {
        get
        {
            if ( _rigidbody2D == null )
            {
                _rigidbody2D = base.GetComponent<Rigidbody2D>();
            }
            return _rigidbody2D;
        }
    }
    # endregion
    # region navMeshAgent
    private NavMeshAgent _navMeshAgent;
    public NavMeshAgent navMeshAgent
    {
        get
        {
            if ( _navMeshAgent == null )
            {
                _navMeshAgent = GetComponent<NavMeshAgent>();
            }
            return _navMeshAgent;
        }
    }
    # endregion
    # region navMeshObstacle
    private NavMeshObstacle _navMeshObstacle;
    public NavMeshObstacle navMeshObstacle
    {
        get
        {
            if ( _navMeshObstacle == null )
            {
                _navMeshObstacle = GetComponent<NavMeshObstacle>();
            }
            return _navMeshObstacle;
        }
    }
    # endregion
    # region tag
    private string _tag;
    public new string tag
    {
        get
        {
            if ( _tag == null )
            {
                _tag = base.tag;
            }
            return _tag;
        }
        set
        {
            _tag = value;
            base.tag = value;
        }
    }
    # endregion
    # region terrain
    private Terrain _terrain;
    public Terrain terrain
    {
        get
        {
            if ( _terrain == null )
            {
                _terrain = GetComponent<Terrain>();
            }
            return _terrain;
        }
    }
    # endregion
    # region transform
    private Transform _transform;
    public new Transform transform
    {
        get
        {
            if ( _transform == null )
            {
                _transform = base.transform;
            }
            return _transform;
        }
    }
    # endregion
    # region name
    private string _name;
    public new string name
    {
        get
        {
            if ( _name == null )
            {
                _name = base.name;
            }
            return _name;
        }
        set
        {
            _tag = value;
            base.tag = value;
        }
    }
    # endregion

    protected virtual void Awake()
    {
    }

    protected virtual void Start()
    {
    }

    protected virtual void Reset()
    {
    }

    protected virtual void FixedUpdate()
    {
    }

    protected virtual void Update()
    {
    }

    protected virtual void LateUpdate()
    {
    }

    protected virtual void OnEnable()
    {
    }

    protected virtual void OnDisable()
    {
    }

    # region bool
    public static bool operator true( CachedMonoBehaviour cachedMonoBehaviour )
    {
        return cachedMonoBehaviour != null;
    }

    public static bool operator false( CachedMonoBehaviour cachedMonoBehaviour )
    {
        return cachedMonoBehaviour == null;
    }
    # endregion
}
