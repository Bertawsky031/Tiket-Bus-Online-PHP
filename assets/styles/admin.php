<style>
    body{
    margin: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
    background-color: white;
    }

    html{
        scroll-behavior: smooth;
    }

    *, *::after, *::before{
        box-sizing: inherit;
    }

    #USER{
        color: #207DFF;
    }


    .adminDp{
        border-radius: 50%;
    }

    #welcome{
        background-color: white;
        /* border-bottom: 1px solid rgb(19, 18, 18); */
    }

    #welcome ul{
        display: flex;
        justify-content: space-between;
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    #welcome li{
        margin: 0 1rem;
        padding: 0.5rem 0;
    }

    #welcome li:first-child{
        font-weight: 800;
        font-size: 1.4rem;
    }

    #logout{
        padding: 0.3rem 0.7rem;
        background-color: #207DFF;
        font-weight: 600;
        outline: none;
        border: none;
        border-radius: 7px;
    }

    #logout a{
        color: white;
        text-decoration: none;
    }

    #pnr-enquiry{
        height: auto;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }

    #pnr-form{
        padding: 4rem 0;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        color: #212529;
        position: relative;
        z-index: 1;
    }

    #pnr-form form{
        width: 70%;
    }

    #pnr-form input{
        width: 100%;
    }

    #pnr-form::before{
        content: "";
        position: absolute;
        height: 100%;
        width: 100%;
        right: 0%;
        border-radius: 10px;
        z-index: -1;
        opacity: 0.5;
    }

    #pnr-form div{
        margin: 1rem auto;
        width: 90%;
    }

    #pnr-form button{
        font-weight: bold;
        font-size: 14px;
        padding: 0.3rem 0.7rem;
        text-transform: uppercase;
        border: 3px solid;
        border-radius: 5px;
        color: #212529;
        background-color: #CCD3DD;
        transition: background-color 400ms;
    }

    #pnr-form button:hover{
        background-color: #CCD3DD;
        cursor: pointer;
    }

    footer{
        border-top: 2px solid #e2e2e2;
        padding: 0.5rem 0;
        text-align: center;
        font-weight: bold;
    }

    footer p{
        margin: 0;
    }

    @media only screen and (min-width:1000px){
        #sidebar{
            text-align: center;
            background-color: #0E2954;
            color: white;
            width: 15%;
            position: fixed;
            top: 0%;
            padding-top: 1rem;
            z-index: 2;
            height: 100vh;
        }
        #sidebar h3{
            margin: 0.5rem 0;
        }

        #sidebar p{
            margin: 0;
        }

        #sidebar ul{
            margin-top: 2rem;
        }

        #options{
            list-style-type: none;
            text-align: left;
            padding-left: 0;
        }
        .option a{
            display: block;
            padding: 0.5rem;
            text-decoration: none;
            color: inherit;
            border-radius: 6px;
        }

        .active {
            background-color:#DEECFF;
            color:black;
            border-radius: 6px;
        }

        .option a:hover{
            color: black;
            border-radius: 6px;
            background-color: #DEECFF;            
        }

        #main-content{
            margin-left: 16%;
        }

        .info-box{
            flex-basis: 20%;
        }
    }
</style>