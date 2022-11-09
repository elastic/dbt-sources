
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_billing_statements') }}

),

renamed as (

    select
        organization_id,
        organization_name,
        subscription_level,
        statement_id,
        sequence_number,
        type,
        start,
        end,
        bill_date,
        currency,
        locale,
        previous_line_items,
        line_items,
        action_line_items,
        overages,
        revenue,
        forfeited,
        usage_types,
        credits,
        charges,
        metadata,
        internal,
        reseller,
        index,
        rec_id,
        bq_insert_datetime

    from source

)

select * from renamed
