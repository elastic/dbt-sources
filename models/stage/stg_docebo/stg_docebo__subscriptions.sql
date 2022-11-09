
with source as (

    select * from {{ source('raw_docebo', 'subscriptions') }}

),

renamed as (

    select
        record_id,
        name,
        plan_id,
        object_id,
        object_type,
        selection_status,
        record_type,
        start_date,
        end_date,
        status,
        type,
        typename,
        availability,
        users_associated,
        enrollments_done,
        notes,
        purchase_type,
        created_by,
        created_on,
        bundle_id,
        price,
        code,
        renewal_type,
        renewalcount,
        plan_name,
        renewal_id,
        plan_code,
        plan_renewal,
        bundle_code,
        bundle_name,
        description,
        validity_units,
        validity_period,
        remaining,
        sold_to,
        sold_to_name,
        sub_items,
        actions,
        enrollment_actions,
        plan_fields,
        bundle_fields,
        parent_id

    from source

)

select * from renamed
