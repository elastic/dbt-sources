
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_setup_configuration_field') }}

),

renamed as (

    select
        taf_setup_configuration_fie_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        field_key,
        field_type_id,
        is_inactive,
        last_modified_date,
        parent_id,
        report,
        taf_setup_configuration_fie_ex,
        taf_setup_configuration_fie_na

    from source

)

select * from renamed
