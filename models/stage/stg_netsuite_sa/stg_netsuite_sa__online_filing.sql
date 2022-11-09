
with source as (

    select * from {{ source('raw_netsuite_sa', 'online_filing') }}

),

renamed as (

    select
        online_filing_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        data_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        meta_data,
        nexus,
        online_filing_extid,
        parent_id,
        result,
        status,
        subsidiary_id,
        type_0,
        user_id,
        vrn

    from source

)

select * from renamed
