def test_file_exists(host):
    pactmaker_zammad = host.file('/opt/pactmaker_zammad/.env')
    assert pactmaker_zammad.exists
    import pdb;pdb.set_trace()
    assert pactmaker_zammad.contains('your')

# def test_pactmaker_zammad_is_installed(host):
#     pactmaker_zammad = host.package('pactmaker_zammad')
#     assert pactmaker_zammad.is_installed
#
#
# def test_user_and_group_exist(host):
#     user = host.user('pactmaker_zammad')
#     assert user.group == 'pactmaker_zammad'
#     assert user.home == '/var/lib/pactmaker_zammad'
#
#
# def test_service_is_running_and_enabled(host):
#     pactmaker_zammad = host.service('pactmaker_zammad')
#     assert pactmaker_zammad.is_enabled
#     assert pactmaker_zammad.is_running
