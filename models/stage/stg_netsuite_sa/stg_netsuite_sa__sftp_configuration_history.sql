
with source as (

    select * from {{ source('raw_netsuite_sa', 'sftp_configuration_history') }}

),

renamed as (

    select
        sftp_configuration_id,
        _fivetran_deleted,
        _fivetran_synced,
        bank_server_time_zone_gmt_id,
        configuration_id,
        date_created,
        date_deleted,
        date_format_for_reserved_word,
        digital_cert_or_private_key_i,
        download_directory,
        download_filename_pattern,
        download_timeout,
        host_key,
        host_key_type_id,
        is_inactive,
        last_modified_date,
        parent_id,
        password_guid,
        port,
        sftp_configuration_extid,
        url,
        username,
        is_absolute_path,
        partition_date

    from source

)

select * from renamed
