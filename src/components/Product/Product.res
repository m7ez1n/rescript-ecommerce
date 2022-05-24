open Render

@react.component
let make = (
  ~name: string,
  ~price: string,
  ~image: string,
  ~quantity: int,
  ~id: string,
  ~onClick=?,
) => {
  let disabledButton = quantity <= 0

  <div className="relative m-3 flex flex-wrap mx-auto justify-center">
    <div
      className="relative max-w-sm min-w-[340px] bg-white shadow-md rounded-3xl p-2 mx-1 my-3 cursor-pointer">
      <div className="overflow-x-hidden rounded-2xl relative">
        <img
          className="h-40 rounded-2xl w-full object-cover"
          src={image}
          alt={`image of product ${name} ${id}`}
        />
      </div>
      <div className="mt-4 pl-2 mb-2 flex justify-between ">
        <div>
          <p className="text-lg font-semibold text-gray-900 mb-0"> {name->s} </p>
          <p className="text-md text-gray-800 mt-0"> {price->s} </p>
        </div>
      </div>
      <Button wfull=true disabled=disabledButton ?onClick> {`add cart`->s} </Button>
    </div>
  </div>
}
