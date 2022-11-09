
with source as (

    select * from {{ source('raw_salesforce', 'reputation_level') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        label,
        last_modified_by_id,
        last_modified_date,
        level_number,
        parent_id,
        system_modstamp,
        threshold,
        _fivetran_deleted

    from source

)

select * from renamed
