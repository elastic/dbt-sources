
with source as (

    select * from {{ source('raw_netsuite_sa', 'company_status') }}

),

renamed as (

    select
        company_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        company_status_extid,
        date_deleted,
        date_last_modified,
        description,
        isinactive,
        name,
        probability,
        readonly

    from source

)

select * from renamed
