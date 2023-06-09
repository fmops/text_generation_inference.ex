defmodule TextGenerationInference.MixProject do
  use Mix.Project

  def project do
    [
      app: :text_generation_inference,
      version: "0.1.2",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description:
        "Elixir bindings for HuggingFace [Text Generation Inference](https://github.com/huggingface/text-generation-inference) API.",
      package: package(),
      deps: deps(),
      name: "text_generation_inference",
      source_url: "https://github.com/fmops/text_generation_inference.ex"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {TextGenerationInference.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev, :test], runtime: false},
      {:oapi_generator,
       git: "https://github.com/aj-foster/open-api-generator",
       ref: "c33d61792eb66f157c0b67a6c4fba7317418d670",
       only: [:dev],
       runtime: false},
      {:tesla, "~> 1.6"},
      {:finch, "~> 0.16"},
      {:jason, "~> 1.4"}
    ]
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["@feynmanliang"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/fmops/text_generation_inference.ex"}
    ]
  end
end
