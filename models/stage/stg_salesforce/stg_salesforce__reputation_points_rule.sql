
with source as (

    select * from {{ source('raw_salesforce', 'reputation_points_rule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        points,
        system_modstamp,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
