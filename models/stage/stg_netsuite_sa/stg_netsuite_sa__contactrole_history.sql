
with source as (

    select * from {{ source('raw_netsuite_sa', 'contactrole_history') }}

),

renamed as (

    select
        contactrole_id,
        _fivetran_deleted,
        _fivetran_synced,
        contactrole_extid,
        date_deleted,
        date_last_modified,
        is_inactive,
        name,
        partition_date

    from source

)

select * from renamed
