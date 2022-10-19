import React, { useEffect, useState } from 'react';
import Axios from 'axios';

function MenteeRequests() {

    const [requestList, setRequestList] = useState([]);

    const getMyRequets = () => {
        Axios.post("http://127.0.0.1:3001/getmyrequests", {
            mentor: sessionStorage.getItem("ID"),
        }).then((response) => {
            setRequestList(response.data)
        });
    }

    useEffect(() => {
        getMyRequets();
    }, []);

    const acceptRequest = (id) => {
        if (window.confirm("Are you sure want to make this action ?") === true) {
            Axios.post("http://127.0.0.1:3001/acceptreq", {
                id: id,
            }).then((response) => {
                getMyRequets();
            });
        }
    }

    const deleteRequest = (id) => {
        if (window.confirm("Are you sure want to make this action ?") === true) {
            Axios.post("http://127.0.0.1:3001/delreq", {
                id: id,
            }).then((response) => {
                getMyRequets();
            });
        }
    }

    return (
        <div className="row g-5 p-5">
            <div className="col-12">
                <h1>Mentee Requests</h1>
            </div>
            <div className="col-12">
                <table className="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email Address</th>
                            <th>Age</th>
                            <th>Class</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            requestList.map((data, key) => {
                                return (
                                    <tr>
                                        <td>{key + 1}</td>
                                        <td>{data.name}</td>
                                        <td>{data.email}</td>
                                        <td>{data.age}</td>
                                        <td>{data.class}</td>
                                        <td><button type="button" className="btn btn-primary" onClick={() => acceptRequest(data.reqid)}>Accept</button>
                                            <button type="button" className="btn btn-danger ms-2" onClick={() => deleteRequest(data.reqid)}>Reject</button></td>
                                    </tr>
                                );
                            })
                        }
                    </tbody>
                </table>
            </div>
        </div>
    );
}

export default MenteeRequests;