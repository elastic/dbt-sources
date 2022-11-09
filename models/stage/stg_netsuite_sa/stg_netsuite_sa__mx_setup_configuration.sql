
with source as (

    select * from {{ source('raw_netsuite_sa', 'mx_setup_configuration') }}

),

renamed as (

    select
        mx_setup_configuration_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        mx_setup_configuration_extid,
        parent_id,
        subsidiary_id,
        taf_setup_configuration_fie_id,
        value_0

    from source

)

select * from renamed
