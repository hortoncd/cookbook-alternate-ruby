MiniTest::Chef::Resources.register_resource(:gem_package)
describe "alternate_ruby" do
  describe_recipe "alternate_ruby_test::unboxed" do
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    it "should have the unboxed sources.list" do
      file("/etc/apt/sources.list.d/unboxed.list").must_exist
    end


    it "should have the ruby1.9.3 package installed" do
      package("ubxd-ruby1.9.3").must_be_installed
    end
  end
end
