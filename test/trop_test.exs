defmodule TropTest do
  use ExUnit.Case
  doctest Trop

  test "test creat" do
    assert Trop_data.create(:hello) == :ok
    assert Trop_data.create(:hello, "world") == :ok
    assert Trop_data.read(:hello) == [hello: "world"]
  end

  test "test update value" do
    assert Trop_data.update(:hello, "hello world") == :ok
    assert Trop_data.read(:hello) == [hello: "hello world"]
  end

  test "test read" do
    assert Trop_data.create(:hello) == :ok
    assert Trop_data.create(:hello, "world") == :ok
    assert Trop_data.read(:hello) == [hello: "world"]
    assert Trop_data.read(:hell) == {:error, "Table dosen't exist"}
  end

  test "test delete" do
    assert Trop_data.create(:hello) == :ok
    assert Trop_data.create(:hello, "world") == :ok
    assert Trop_data.delete(:hello) == :ok
    assert Trop_data.read(:hello) == {:error, "Table dosen't exist"}
  end

end
