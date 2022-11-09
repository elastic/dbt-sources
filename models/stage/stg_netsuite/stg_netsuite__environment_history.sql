
with source as (

    select * from {{ source('raw_netsuite', 'environment_history') }}

),

renamed as (

    select
        account_id,
        date_created,
        environment_extid,
        environment_id,
        environment_name,
        is_inactive,
        last_modified_date,
        last_refresh_date,
        parent_0,
        parent_id,
        path_0,
        type_id

    from source

)

select * from renamed
