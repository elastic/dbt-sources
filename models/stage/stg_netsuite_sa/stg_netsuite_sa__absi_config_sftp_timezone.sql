
with source as (

    select * from {{ source('raw_netsuite_sa', 'absi_config_sftp_timezone') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        absi_config_sftp_timezone_exti,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
