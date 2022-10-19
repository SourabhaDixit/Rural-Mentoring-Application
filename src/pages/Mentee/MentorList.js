import React, { useEffect, useState } from "react";
import Axios from "axios";

function MentorList() {
  const [requestList, setRequestList] = useState([]);

  const getMyRequets = () => {
    Axios.post("http://127.0.0.1:3001/getmentorlist", {
      mentee: sessionStorage.getItem("ID"),
    }).then((response) => {
      setRequestList(response.data);
    });
  };

  useEffect(() => {
    getMyRequets();
  }, []);

  const deleteRequest = (id) => {
    if (window.confirm("Are you sure want to make this action ?") === true) {
      Axios.post("http://127.0.0.1:3001/delreq", {
        id: id,
      }).then((response) => {
        getMyRequets();
      });
    }
  };

  return (
    <div className="row g-5 p-5">
      <div className="col-12">
        <h1>MENTEE</h1>
        <h2>Mentor List</h2>
      </div>
      <div className="col-12">
        <table className="table table-striped">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Email Address</th>
              <th>Phone Number</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            {requestList.map((data, key) => {
              return (
                <tr>
                  <td>{key + 1}</td>
                  <td>{data.name}</td>
                  <td>{data.email}</td>
                  <td>{data.phone}</td>
                  <td>
                    <button
                      type="button"
                      className="btn btn-danger"
                      onClick={() => deleteRequest(data.reqid)}
                    >
                      Remove
                    </button>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default MentorList;
