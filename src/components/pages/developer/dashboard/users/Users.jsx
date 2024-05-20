import React from 'react'
import { FiPlus } from 'react-icons/fi'
import { setIsAdd } from '../../../../../store/StoreAction'
import { StoreContext } from '../../../../../store/StoreContext'
import useQueryData from '../../../../custom-hook/useQueryData'
import Header from '../../../../partials/Header'
import Navigation from '../../../../partials/Navigation'
import Toast from '../../../../partials/Toast'
import ModalError from '../../../../partials/modals/ModalError'
import ModalAddUser from './ModalAddUser'
import UsersTable from './UsersTable'
import Searchbar from '../../../../partials/Searchbar'

const Users = () => {

    const {store, dispatch} = React.useContext(StoreContext);
    const [isSearch, setIsSearch] = React.useState(false);
    const[keyword, setKeyword] = React.useState('');
    const [itemEdit, setItemEdit] = React.useState('');

    const {
        isLoading,
        isFetching,
        error,
        data: user,
      } = useQueryData(
        isSearch ? "/v1/user/search" : "/v1/user", // endpoint
        isSearch ? "post" : "get", // method
        "user", // key
        {
            searchValue: keyword
        }
      );

      const handleAdd = () => {
        dispatch(setIsAdd(true));
        setItemEdit(null)
  }

  return (
    <section className='flex overflow-x-hidden'>
        <Navigation />
        <main className='w-[calc(100%-250px)]'>
            <Header/>
            <div className='flex'>
                <div className={`main-wrapper px-4 transition-all py-3 sticky top-0 w-full`}>
                <div className='flex justify-between items-center'>
                    <h1>User List</h1>
                    <Searchbar setIsSearch={setIsSearch} setKeyword={setKeyword}/>
                    
                </div>

                <div className='tab flex justify-between items-center mt-8 border-b border-line mb-8'>
                    <h2>Search</h2>
                    <button className='btn btn--accent' onClick={handleAdd}>
                        <FiPlus /> New
                    </button>
                </div>

                <UsersTable isLoading={isLoading} user={user} isFetching={isFetching} setItemEdit={setItemEdit}/>
            </div>
        </div>  
    </main>


    {store.isAdd && <ModalAddUser itemEdit={itemEdit}/>}

    {store.error && <ModalError position="center"/>}
    {store.success && <Toast/>}
    
    </section>
  )
}

export default Users