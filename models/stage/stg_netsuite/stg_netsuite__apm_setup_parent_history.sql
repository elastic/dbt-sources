
with source as (

    select * from {{ source('raw_netsuite', 'apm_setup_parent_history') }}

),

renamed as (

    select
        apm_setup_parent_extid,
        apm_setup_parent_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
