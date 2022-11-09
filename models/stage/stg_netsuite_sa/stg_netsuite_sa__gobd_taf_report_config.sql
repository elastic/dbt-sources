
with source as (

    select * from {{ source('raw_netsuite_sa', 'gobd_taf_report_config') }}

),

renamed as (

    select
        gobd_taf_report_config_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        gobd_taf_report_config_extid,
        gobd_taf_report_config_name,
        is_inactive,
        last_modified_date,
        parent_id,
        subsidiary_id,
        use_new_engine

    from source

)

select * from renamed
