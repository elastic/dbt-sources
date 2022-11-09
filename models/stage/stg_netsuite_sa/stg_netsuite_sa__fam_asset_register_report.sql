
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_register_report') }}

),

renamed as (

    select
        fam_asset_register_report_id,
        _fivetran_deleted,
        _fivetran_synced,
        assets_to_be_selected,
        date_created,
        date_deleted,
        end_date,
        fam_asset_register_report_exti,
        is_inactive,
        last_modified_date,
        parent_id,
        start_date

    from source

)

select * from renamed
