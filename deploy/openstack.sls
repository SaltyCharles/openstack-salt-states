ips setup:
  salt.function:
    - tgt: 'salt*'
    - name: publish.runner
    - kwarg:
        fun: setup.ips

database setup:
  salt.state:
    - tgt: 'postgres* or memcached* or rabbitmq*'
    - tgt_type: compound
    - highstate: True

keystone setup:
  salt.state:
    - tgt: 'keystone*'
    - highstate: True

everything else setup:
  salt.state:
    - tgt: 'glance* or nova* or neutron* or mistral* or horizon* or cinder*'
    - tgt_type: compound
    - highstate: True
