
with source as (

    select * from {{ source('raw_netsuite_sa', 'revrec_type') }}

),

renamed as (

    select
        revrec_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        batch_verificationcontrol_dep,
        date_created,
        date_deleted,
        extract_priority,
        is_inactive,
        last_modified_date,
        parent_id,
        revrec_type_extid,
        revrec_type_name,
        schema_instance_id

    from source

)

select * from renamed
