
with source as (

    select * from {{ source('raw_salesforce', 'territory_2_type_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        priority,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
