
with source as (

    select * from {{ source('raw_netsuite_sa', 'sftp_connectivity_file_import_history') }}

),

renamed as (

    select
        sftp_connectivity_file_impo_id,
        _fivetran_deleted,
        _fivetran_synced,
        configuration_id,
        date_created,
        date_deleted,
        filename,
        is_inactive,
        last_modified_date,
        parent_id,
        sftp_connectivity_file_impo_ex,
        url,
        partition_date

    from source

)

select * from renamed
