alias Prismic.Fragment.StructuredText.Span
alias Prismic.Fragment.{WebLink, DocumentLink, ImageLink}

defmodule Span.Hyperlink do
  defstruct [:start, :end, :link]

  @type t :: %__MODULE__{
    start: Integer.t(),
    end: Integer.t(),
    link: WebLink.t() | DocumentLink.t() | ImageLink.t()}
end

defimpl Span, for: Span.Hyperlink do
  # TODO
  def serialize(_, _link_resolver), do: ""
end
