
with source as (

    select * from {{ source('raw_salesforce', 'case_subject_particle_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        developer_name,
        id,
        index,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        system_modstamp,
        text_field,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
