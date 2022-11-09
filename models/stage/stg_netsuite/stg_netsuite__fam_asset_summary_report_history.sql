
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_summary_report_history') }}

),

renamed as (

    select
        assets_to_be_selected,
        date_created,
        end_date,
        fam_asset_summary_report_extid,
        fam_asset_summary_report_id,
        is_inactive,
        last_modified_date,
        parent_id,
        start_date

    from source

)

select * from renamed
