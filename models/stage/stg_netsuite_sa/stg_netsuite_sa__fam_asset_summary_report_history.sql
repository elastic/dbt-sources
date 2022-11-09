
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_summary_report_history') }}

),

renamed as (

    select
        fam_asset_summary_report_id,
        _fivetran_deleted,
        _fivetran_synced,
        assets_to_be_selected,
        date_created,
        date_deleted,
        end_date,
        fam_asset_summary_report_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        start_date,
        partition_date

    from source

)

select * from renamed
