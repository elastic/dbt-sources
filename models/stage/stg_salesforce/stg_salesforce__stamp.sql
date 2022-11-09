
with source as (

    select * from {{ source('raw_salesforce', 'stamp') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        master_label,
        parent_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed