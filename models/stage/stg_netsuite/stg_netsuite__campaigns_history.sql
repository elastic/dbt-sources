
with source as (

    select * from {{ source('raw_netsuite', 'campaigns_history') }}

),

renamed as (

    select
        audience_id,
        campaign_extid,
        campaign_id,
        category_id,
        cost_0,
        customization_id,
        date_created,
        date_last_modified,
        end_date,
        expectedrevenue,
        family_id,
        internal_case_notes,
        is_inactive,
        is_milestone,
        is_sales_campaign,
        keyword,
        last_modified_date,
        message,
        next_due_date,
        next_step,
        number_0,
        offer_id,
        organizer_id,
        process_id,
        process_issue_id,
        related_customization_id,
        search_engine_id,
        start_date,
        time_zone_0,
        title,
        url,
        vertical_id,
        vendor_select_id

    from source

)

select * from renamed
