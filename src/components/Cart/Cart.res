open Render

@react.component
let make = (~onClick) => {
  <div
    className="py-12 bg-gray-400 transition duration-150 ease-in-out z-10 absolute top-0 right-0 bottom-0 left-0">
    <div role="alert" className="container mx-auto w-11/12 md:w-2/3 max-w-lg">
      <div
        className="relative py-8 px-5 md:px-10 bg-white shadow-md rounded border border-gray-400">
        <h1 className="text-gray-800 text-3xl font-bold tracking-normal leading-tight mb-4">
          {`Your cart`->s}
        </h1>
        // TODO adicionar o item aqui dentro

        <div> <Button wfull=true> {`Buy`->s} </Button> </div>
        <button
          className="cursor-pointer absolute top-0 right-0 mt-4 mr-5 text-gray-400 hover:text-gray-600 transition duration-150 ease-in-out rounded focus:ring-2 focus:outline-none focus:ring-gray-600"
          onClick
          ariaLabel="close modal">
          <CloseIcon />
        </button>
      </div>
    </div>
  </div>
}
