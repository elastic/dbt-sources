
with source as (

    select * from {{ source('raw_netsuite_sa', 'online_filing_authorization') }}

),

renamed as (

    select
        online_filing_authorization_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        online_filing_authorization_ex,
        parent_id

    from source

)

select * from renamed
