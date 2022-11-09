
with source as (

    select * from {{ source('raw_netsuite_sa', 'nature_of_transaction_default') }}

),

renamed as (

    select
        nature_of_transaction_defau_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nature_of_transaction_defau_ex,
        notc_id,
        parent_id

    from source

)

select * from renamed
