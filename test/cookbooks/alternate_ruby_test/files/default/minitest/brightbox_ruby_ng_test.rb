MiniTest::Chef::Resources.register_resource(:gem_package)
describe "alternate_ruby" do
  describe_recipe "alternate_ruby_test::brigntbox_ruby_ng" do
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    it "should have the brightbox sources.list" do
      file("/etc/apt/sources.list.d/brightbox.list").must_exist
    end

    it "should have the ruby2.1 package installed" do
      package("ruby2.1").must_be_installed
    end

    it "should have the ruby2.1-dev package installed" do
      package("ruby2.1-dev").must_be_installed
    end
  end
end
